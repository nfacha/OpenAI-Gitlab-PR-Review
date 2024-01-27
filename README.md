# AI Code Reviewer

AI Code Reviewer is a Python script that leverages OpenAI's GPT-3.5-turbo to automatically review code changes in GitLab repositories. It listens for merge request and push events, fetches the associated code changes, and provides feedback on the changes in a Markdown format.

## Features

- Automatically reviews code changes in GitLab repositories
- Provides feedback on code clarity, simplicity, bugs, and security issues
- Generates Markdown-formatted responses for easy readability in GitLab

## Getting Started

### Prerequisites

- Python 3.8 or higher
- Docker (optional)
- An OpenAI API key
- A GitLab API token

### Installation

1. Clone the repository:
```
https://git.facha.dev/facha/openai-gitlab-pr-review.git
cd ai-code-reviewer
```

2. Install the required Python packages:
```
pip install -r requirements.txt
```

3. Create a `.env` file and set the required environment variables:
```
OPENAI_API_KEY=<your OpenAI API key>
GITLAB_TOKEN=<your GitLab API token>
GITLAB_URL=https://gitlab.com/api/v4
EXPECTED_GITLAB_TOKEN=<your expected GitLab token>
```
4. Run the application:
```
python app.py
```


### Docker

Alternatively, you can use Docker to run the application:

1. Build the Docker image:
```
docker-compose build
```
2. Run the Docker container:
```
docker-compose up -d
```


## Usage

1. Configure your GitLab repository to send webhook events to the AI Code Reviewer application by following [GitLab's webhook documentation](https://docs.gitlab.com/ee/user/project/integrations/webhooks.html).

2. The AI Code Reviewer application will automatically review code changes in your GitLab repository and provide feedback as comments on merge requests and commit diffs.
