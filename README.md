## 🚀 Word Count CI/CD with ACR + ACI + GitHub Actions
_This project demonstrates a complete CI/CD pipeline using **Azure Container Registry (ACR)**, **Azure Container Instances (ACI)**, and **GitHub Actions**, triggered by changes to a data file._

### 📌 Project Highlights:
- ⚙️ Integration: Fully integrates (GitHub Actions + ACR + ACI) CI/CD pipeline.
- 🔐 Setup: Configure Azure (Resource Group, ACR, Service Principal) and set GitHub Actions secrets.
- 🧪 Demo App: A Python script counts words in specific data.txt 
- 🛠️ Automation: GitHub Actions runs the entire pipeline using Bash and Python scripts.
- 🐳 Docker Build: A custom Docker image is built on every change and pushed to ACR.
- 🚀 Deployment: The container is automatically deployed to ACI.
- 🔄 Trigger: The CI/CD workflow is triggered by changes to specific data.txt.
- ✅ Sucess: Dynamically update `index.html` with the word count
- 🌐 Live Output: The updated word count is viewable at a public URL (FQDN) after deployment.

---

### 📁 Project Structure

.github/workflows/\
│\
├── apps/\
│   &ensp;&ensp;&ensp;└── app.py          
├── scripts/\
│   &ensp;&ensp;&ensp;├── setup.sh   (One-time script - initialization)<br>
│   &ensp;&ensp;&ensp;├── gh_setup.sh   (One-time script - initialization)                     
│   &ensp;&ensp;&ensp;├── update_html.sh\
│   &ensp;&ensp;&ensp;├── deploy.sh            
│   &ensp;&ensp;&ensp;├── entrypoint.sh<br>
│   &ensp;&ensp;&ensp;└── cleanup.sh (One-time script - cleanup azure resources)  
├── ci.yml                    
└── deploy.yml

index.html                 
data.txt           
Dockerfile\
.gitignore                

---
### 🧰 Stack Overview
- Cloud: Azure Container Registry (ACR)
- Cloud: Azure Container Instances (ACI)
- CI/CD: GitHub Actions
- Deployment Tool: Bash scripts & Azure CLI
- App Example: Python word count app served via Python HTTP server
- CLI Tools: az, gh, docker
---

### 🚀 How to Deploy

1. **Install dependencies**
   ```
   chmod +x setup.sh
   ./.github/scripts/setup.sh
   ```

2. **Run the deployment**
   ```
   chmod +x deploy.sh
   ./.github/scripts/deploy.sh
   ```

* ✅ Example Output:

   🌐 Live App Access (FQDN): http://\<dns-label\>.\<region\>.azurecontainer.io
---

### 🧹 Cleanup

To delete Azure resources:
   ```
   chmod +x cleanup.sh
   ./.github/scripts/cleanup.sh
   ```
---

### 👨‍💻 Author: Georges Bou Ghantous

This repository demonstrates automated deployment of a Python app to ACI+ACR using GitHub Actions. 💙