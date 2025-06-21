# Tokenized Resource Planning Enterprise Resource Optimization

A comprehensive blockchain-based resource planning and optimization system built on the Stacks blockchain using Clarity smart contracts.

## Overview

This system provides enterprise-grade resource planning capabilities through a suite of interconnected smart contracts that handle verification, forecasting, capacity planning, allocation optimization, and utilization tracking.

## Architecture

### Core Contracts

1. **Resource Planner Verification** (`resource-planner-verification.clar`)
    - Validates and manages resource planners
    - Maintains certification levels and verification status
    - Controls access to other system functions

2. **Demand Forecasting** (`demand-forecasting.clar`)
    - Creates and manages demand forecasts
    - Records historical demand data
    - Supports confidence level tracking

3. **Capacity Planning** (`capacity-planning.clar`)
    - Plans resource capacity based on forecasts
    - Manages resource pools and allocation
    - Tracks capacity utilization

4. **Allocation Optimization** (`allocation-optimization.clar`)
    - Optimizes resource allocation across projects
    - Manages project priorities and timelines
    - Tracks efficiency scores

5. **Utilization Tracking** (`utilization-tracking.clar`)
    - Records actual resource utilization
    - Calculates performance metrics
    - Generates utilization reports

## Features

### Resource Planner Verification
- ✅ Planner verification and certification management
- ✅ Access control for system functions
- ✅ Verification status tracking

### Demand Forecasting
- ✅ Create demand forecasts with confidence levels
- ✅ Record actual demand for accuracy tracking
- ✅ Historical demand analysis

### Capacity Planning
- ✅ Create capacity plans with buffer management
- ✅ Resource pool management
- ✅ Capacity allocation tracking

### Allocation Optimization
- ✅ Project creation and management
- ✅ Resource allocation optimization
- ✅ Efficiency score tracking

### Utilization Tracking
- ✅ Real-time utilization recording
- ✅ Performance metrics calculation
- ✅ Comprehensive reporting

## Getting Started

### Prerequisites
- Stacks blockchain node or testnet access
- Clarity CLI for contract deployment
- Node.js for running tests

### Installation

1. Clone the repository
   \`\`\`bash
   git clone <repository-url>
   cd tokenized-resource-planning
   \`\`\`

2. Install dependencies
   \`\`\`bash
   npm install
   \`\`\`

3. Run tests
   \`\`\`bash
   npm test
   \`\`\`

### Deployment

Deploy contracts in the following order:

1. Resource Planner Verification
2. Demand Forecasting
3. Capacity Planning
4. Allocation Optimization
5. Utilization Tracking

\`\`\`bash
clarinet deploy --testnet
\`\`\`

## Usage

### 1. Verify Resource Planners
\`\`\`clarity
(contract-call? .resource-planner-verification verify-planner
'ST2CY5V39NHDPWSXMW9QDT3HC3GD6Q6XX4CFRK9AG
"John Doe"
u3)
\`\`\`

### 2. Create Demand Forecasts
\`\`\`clarity
(contract-call? .demand-forecasting create-forecast
"developers"
u202401
u50
u85)
\`\`\`

### 3. Plan Capacity
\`\`\`clarity
(contract-call? .capacity-planning create-capacity-plan
"developers"
u202401
u100
u20)
\`\`\`

### 4. Create Projects and Allocate Resources
\`\`\`clarity
(contract-call? .allocation-optimization create-project
"Web Application"
u1
u202401
u202406)
\`\`\`

### 5. Track Utilization
\`\`\`clarity
(contract-call? .utilization-tracking record-utilization
"developers"
u202401
u1
u40
u45
u88)
\`\`\`

## Testing

The project includes comprehensive test suites for all contracts:

\`\`\`bash
# Run all tests
npm test

# Run specific contract tests
npm test -- resource-planner-verification.test.js
npm test -- demand-forecasting.test.js
npm test -- capacity-planning.test.js
npm test -- allocation-optimization.test.js
npm test -- utilization-tracking.test.js
\`\`\`

## Error Codes

### Resource Planner Verification
- `u100`: ERR_UNAUTHORIZED
- `u101`: ERR_ALREADY_VERIFIED
- `u102`: ERR_NOT_VERIFIED

### Demand Forecasting
- `u200`: ERR_UNAUTHORIZED
- `u201`: ERR_INVALID_FORECAST
- `u202`: ERR_FORECAST_EXISTS

### Capacity Planning
- `u300`: ERR_UNAUTHORIZED
- `u301`: ERR_INVALID_CAPACITY
- `u302`: ERR_INSUFFICIENT_CAPACITY

### Allocation Optimization
- `u400`: ERR_UNAUTHORIZED
- `u401`: ERR_INVALID_ALLOCATION
- `u402`: ERR_INSUFFICIENT_RESOURCES
- `u403`: ERR_PROJECT_NOT_FOUND

### Utilization Tracking
- `u500`: ERR_UNAUTHORIZED
- `u501`: ERR_INVALID_UTILIZATION
- `u502`: ERR_RECORD_NOT_FOUND

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Ensure all tests pass
6. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For support and questions, please open an issue in the GitHub repository.
