;; Resource Planner Verification Contract
;; Validates and manages resource planners

(define-constant CONTRACT_OWNER tx-sender)
(define-constant ERR_UNAUTHORIZED (err u100))
(define-constant ERR_ALREADY_VERIFIED (err u101))
(define-constant ERR_NOT_VERIFIED (err u102))

;; Data maps
(define-map verified-planners principal bool)
(define-map planner-details principal {
    name: (string-ascii 50),
    certification-level: uint,
    verified-at: uint
})

;; Public functions
(define-public (verify-planner (planner principal) (name (string-ascii 50)) (cert-level uint))
    (begin
        (asserts! (is-eq tx-sender CONTRACT_OWNER) ERR_UNAUTHORIZED)
        (asserts! (is-none (map-get? verified-planners planner)) ERR_ALREADY_VERIFIED)
        (map-set verified-planners planner true)
        (map-set planner-details planner {
            name: name,
            certification-level: cert-level,
            verified-at: block-height
        })
        (ok true)
    )
)

(define-public (revoke-verification (planner principal))
    (begin
        (asserts! (is-eq tx-sender CONTRACT_OWNER) ERR_UNAUTHORIZED)
        (asserts! (is-some (map-get? verified-planners planner)) ERR_NOT_VERIFIED)
        (map-delete verified-planners planner)
        (map-delete planner-details planner)
        (ok true)
    )
)

;; Read-only functions
(define-read-only (is-verified-planner (planner principal))
    (default-to false (map-get? verified-planners planner))
)

(define-read-only (get-planner-details (planner principal))
    (map-get? planner-details planner)
)
