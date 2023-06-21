# DevSecOps Pipeline

DevSecOps pipeline using GitLab CI/CD, integrating security practices and compliance checks at each stage of the pipeline. It builds, tests, and deploys a sample web application, incorporating automated security scanning and compliance checking.

## Technologies used

- GitLab
- Docker
- Terraform
- OpenSCAP
- HashiCorp Vault
- OWASP ZAP
- SonarQube
- Safety (Python dependency scanner)
- Prometheus
- Grafana

## Project structure

- `app/`: Contains the source code and Dockerfile for the sample web application
- `terraform/`: Contains Terraform configuration files for provisioning infrastructure resources
- `openscap/`: Contains scripts and configuration files related to OpenSCAP security scanning
- `monitoring/`: Contains monitoring configurations, such as Prometheus configuration files
- `.gitignore`: A file specifying files and directories that should be ignored by Git
- `.gitlab-ci.yml`: Defines the GitLab CI/CD pipeline configuration
- `README.md`: This file, which provides an overview of the project and instructions for getting started

## How it works

1. The GitLab CI/CD pipeline is triggered on code push or merge request.
2. The pipeline builds the Docker image for the web application using the Dockerfile in the `app/` directory.
3. The pipeline runs OpenSCAP security scanning on the Docker image using the `openscap/dockerfile_scan.sh` script. The pipeline will fail if any high-risk vulnerabilities or non-compliant configurations are detected.
4. The pipeline runs static application security testing (SAST) using SonarQube to scan the source code for vulnerabilities.
5. The pipeline performs automated dependency scanning using Safety to identify vulnerabilities in the application's dependencies and libraries.
6. The pipeline provisions infrastructure resources using Terraform, based on the configuration files in the `terraform/` directory.
7. The pipeline deploys the Docker container to the created infrastructure.
8. HashiCorp Vault is used to securely store and manage sensitive information, such as API keys, database credentials, and SSL certificates. The pipeline integrates with Vault to access these secrets as needed.
9. The pipeline runs dynamic application security testing (DAST) using OWASP ZAP to scan the web application for security vulnerabilities during runtime.
10. Monitoring and alerting are set up using Prometheus and Grafana to notify of security events and vulnerabilities detected during the pipeline's execution or in the deployed application.
11. A rollback mechanism is implemented in the pipeline to revert the infrastructure state in case of deployment failures or critical security vulnerabilities.

## Getting started

1. Clone the repository
2. Set up a GitLab project and configure the necessary environment variables for GitLab CI/CD, such as Docker registry credentials, Terraform backend configuration, and HashiCorp Vault access tokens.
3. Make changes to the Terraform configuration files in the `terraform/` directory as needed, based on your infrastructure requirements.
4. Configure the OpenSCAP scanning policy in the `openscap/` directory.
5. Set up a SonarQube server and configure a project for your application.
6. Deploy and configure Prometheus and Grafana for monitoring and alerting.
7. Push your changes to the GitLab project, which will trigger the CI/CD pipeline. 
8. Monitor the pipeline execution in GitLab and review the logs to ensure all stages are successful and that security scans and compliance checks are being performed as expected.

## Contributing

1. Fork the project and create a new feature branch.
2. Make changes or additions to the project files.
3. Ensure that your changes are properly tested and documented.
4. Create a merge request to the main repository for review.

## License

This project is licensed under the MIT License. Please see the LICENSE file for more information.

## Acknowledgements

- [GitLab](https://gitlab.com/)
- [Docker](https://www.docker.com/)
- [Terraform](https://www.terraform.io/)
- [OpenSCAP](https://www.open-scap.org/)
- [HashiCorp Vault](https://www.vaultproject.io/)
- [OWASP ZAP](https://www.zaproxy.org/)
- [SonarQUbe](https://www.sonarqube.org/)
- [Safety](https://pyup.io/safety/)
- [Prometheus](https://prometheus.io/)
- [Grafana](https://grafana.com/)
