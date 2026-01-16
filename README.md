# Lab M4.03 - Configure Remote State

**Course:** Cloud Engineering Bootcamp - Week 4  
**Module:** Infrastructure as Code with Terraform  
**Lab Type:** Individual  
**Estimated Time:** 60-75 minutes

---

## 📋 Overview

Set up remote state storage using S3 and DynamoDB for team collaboration and state locking.

## 🎯 Learning Objectives

- Create S3 bucket for state storage
- Create DynamoDB table for state locking
- Configure S3 backend
- Migrate from local to remote state
- Test state locking functionality

## 📁 Repository Structure

```
ce-lab-terraform-remote-state/
├── README.md
├── bootstrap/
│   └── main.tf
├── main.tf
├── backend.tf
├── config/
│   ├── s3-bucket-config.txt
│   └── dynamodb-table-config.txt
└── screenshots/
```

## 🚀 Key Tasks

1. Bootstrap backend infrastructure
2. Configure backend.tf
3. Migrate state to S3
4. Test state locking
5. Document the process

## ✅ Grading Criteria (100 points)

- S3 backend resources: 25pts
- Backend configuration: 25pts
- State migration: 20pts
- Lock testing: 20pts
- Documentation: 10pts

---

**Cloud Engineering Bootcamp** | Week 4 - Infrastructure as Code
