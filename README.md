# rezapplybot
a resume application bot that mass applies to jobs while tailoring your resume based on the job description

# generate instructions on how to use the bot in markdown format
## instructions
1. **Clone the Repository**: Start by cloning the ResumeGenerator repository to your local machine using the command:
   ```
   git clone
    ```
2. **Start Docker Daemon**: Ensure that your Docker daemon is running. You can start it by executing:
   ```
   sudo systemctl start docker
   ```
3. **Build the Docker Image**: Navigate to the cloned repository directory and use docker compose to build the Docker image:
   ```
   docker compose build -f docker-compose.yml
   ```
4. **Customize your Resume**: Make sure to customize your resume and cover letter templates located in the repository. Tailor them to highlight your skills and experiences relevant to the jobs you are applying for and save it as a .tex file.
5. **Run the Makefile**: Use the provided Makefile to compile your resume and cover letter into PDF format. Run the following command:
   ```
   make resume
   ```
6. **Navigate to the build Directory**: After running the Makefile, navigate to the `build` directory where your compiled resume PDF is located:
   ```
   cd build
   ```
