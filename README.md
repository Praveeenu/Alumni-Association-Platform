# Alumni Association Platform

A full-stack alumni-student networking platform built to centralize alumni engagement for a university community — job postings, event management, an alumni directory, and an interview-prep knowledge base, serving **5,000+ users across 4 departments**.

Built as a capstone project at Vasireddy Venkatadri Institute of Technology (VVIT), Jan 2025 – Apr 2025.

---

## Features

- **Job Board** — alumni post openings, students/recent grads browse and apply
- **Event Management** — event creation, listing, and coordination between alumni and the institution
- **Searchable Alumni Directory** — student and alumni profiles, searchable by department/batch
- **Interview Prep Knowledge Base** — shared interview experiences and success stories, contributed by alumni
- **Role-Based Access Control (RBAC)** — 3-tier permission hierarchy (Admin / Alumni / Student), achieving zero unauthorized-access incidents during UAT and post-deployment
- **Chatbot** — will give responses related to the user queries 

## Tech Stack

**Backend:** Python, Django, Django REST Framework, MySQL
**Frontend:** React.js, Bootstrap 5, jQuery, HTML5, CSS3
**Chatbot service:** Python (Flask) <!-- TODO: confirm Flask vs. something else -->, Hugging Face Transformers (summarization model)
**Tools:** Git, Postman, REST APIs

## Project Structure

```
Alumni-Association-Platform/
├── Front-End/          # React.js client
├── BACK END/            # Django REST Framework backend
│   └── Chatbot/          # Flask-based chatbot service
│       └── app.py
├── .gitignore
└── README.md
```

## Performance & Engineering Highlights

- Diagnosed and resolved slow MySQL queries via indexing and query rewriting, reducing average response time by **35%**
- Built a fully responsive UI across mobile, tablet, and desktop, contributing to a **28% increase** in average session duration during usability testing
- Automated content-sharing workflows for success stories and interview experiences, cutting manual upload effort from 3 hours/week to under 20 minutes
- Designed a normalized MySQL schema (10+ tables) supporting the platform's core modules

## Getting Started

### Prerequisites
- Python 3.x
- Node.js & npm
- MySQL

### Backend Setup
```bash
cd "BACK END"
pip install -r requirements.txt
# Configure your database credentials — see .env.example
python manage.py migrate
python manage.py runserver
```

### Frontend Setup
```bash
cd Front-End
npm install
npm start
```

### Chatbot Service
```bash
cd "BACK END/Chatbot"
pip install -r requirements.txt
python app.py
```

> **Note on the summarization model:** the pretrained model weights and training datasets used by the Chatbot service are not included in this repository (standard practice — they're large binary files unsuited to Git). <!-- TODO: add the actual source/instructions, e.g. "Download the model from [Hugging Face link] and place it in BACK END/Chatbot/summarization_model/" or "Model is fetched automatically at runtime via from_pretrained()" --> On first run, the chatbot service will need the model available locally per the instructions above.

### Environment Variables
Create a `.env` file inside `BACK END/Chatbot/` (and any other location your app expects one) based on `.env.example`, containing your own database credentials, secret keys, and any API keys required. **Never commit your actual `.env` file** — it's excluded via `.gitignore`.

## Author

**Yaragalla Praveen Raj**
[LinkedIn](https://linkedin.com/in/praveen-yaragalla-87ba192b4) · ypraveenraj35@gmail.com
