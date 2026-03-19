# Nexus CRM B2B

The B2B (Business-to-Business) service for the **Nexus CRM** platform. This Laravel-based API manages student enrollment workflows, agency partnerships, accountant operations, document processing, and certificate generation for education-sector B2B relationships.

## Features

- **Student Management** — Full lifecycle management of student records including enrollment, status tracking, and profile updates
- **Agency Portal** — Agency-scoped analytics, student submissions, and performance dashboards
- **Admin Analytics** — Aggregate statistics on approved, pending, rejected, and certified students
- **Accountant Operations** — Dedicated controller for financial record management and student billing
- **Comment System** — Threaded comments on student records for internal collaboration
- **Document Management** — Upload, store, and manage mandatory student documents with file validation
- **Certificate Generation** — PDF certificate creation and delivery via DomPDF
- **Invoice Generation** — Student-level invoice creation and management
- **Email Notifications** — Automated email dispatch for student status updates and communications
- **Token-Based Auth** — Cross-service authentication via the Users microservice
- **Asset Management** — Static asset storage for templates and branding resources

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Framework | Laravel 10 |
| Language | PHP 8.1+ |
| Authentication | Laravel Sanctum (cross-service token validation) |
| PDF Generation | barryvdh/laravel-dompdf |
| HTTP Client | Guzzle |
| Email | Laravel Mail |
| Database | MySQL |
| Testing | PHPUnit 10 |
| Code Style | StyleCI |

## Prerequisites

- PHP >= 8.1
- Composer
- MySQL 5.7+ or MariaDB 10.3+

## Getting Started

1. **Clone the repository**

   ```bash
   git clone https://github.com/mhmalvi/nexus-crm-b2b.git
   cd nexus-crm-b2b
   ```

2. **Install dependencies**

   ```bash
   composer install
   ```

3. **Configure environment**

   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

   Update `.env` with database credentials, mail settings, and the `CRM_USER_API` URL for cross-service authentication.

4. **Run database migrations**

   ```bash
   php artisan migrate
   ```

   Alternatively, import the provided `crm_btob.sql` schema file.

5. **Start the development server**

   ```bash
   php artisan serve
   ```

   The API will be available at `http://localhost:8000`.

## Key Controllers

| Controller | Responsibility |
|-----------|---------------|
| `StudentController` | Student CRUD, analytics, agency views, and certificate management |
| `AccountantController` | Financial operations and student billing workflows |
| `CommentController` | Internal comments and notes on student records |
| `UserController` | User context and role resolution for B2B operations |

## Microservices Integration

| Service | Interaction |
|---------|------------|
| nexus-crm-users | Validates bearer tokens and resolves user identity |
| nexus-crm-leads | Links B2B student records to lead pipeline entries |
| nexus-crm-orgs | Retrieves company/agency context for multi-tenant operations |
| nexus-crm-payments | Processes student-related payment transactions |
| nexus-crm-client | Frontend consumes B2B student management APIs |

## License

This project is proprietary software. All rights reserved.
