import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { PortfolioService } from '../../services/portfolio.service';

interface SentMessage {
  name: string;
  email: string;
  message: string;
  sentAt: Date;
}

@Component({
  selector: 'app-contact-form',
  standalone: true,
  imports: [CommonModule, ReactiveFormsModule],
  templateUrl: './contact-form.component.html',
  styleUrl: './contact-form.component.css'
})
export class ContactFormComponent {
  form: FormGroup;
  submitting = false;
  submitted = false;
  error = false;

  // Messages submitted this session, so the user can view what they sent.
  sentMessages: SentMessage[] = [];
  showHistory = false;

  constructor(private fb: FormBuilder, private portfolioService: PortfolioService) {
    this.form = this.fb.group({
      name: ['', Validators.required],
      email: ['', [Validators.required, Validators.email]],
      message: ['', Validators.required]
    });
  }

  onSubmit(): void {
    if (this.form.invalid) {
      this.form.markAllAsTouched();
      return;
    }
    this.submitting = true;
    this.error = false;
    const payload = this.form.value;

    this.portfolioService.submitContact(payload).subscribe({
      next: () => {
        this.submitting = false;
        this.submitted = true;
        this.sentMessages.unshift({
          name: payload.name,
          email: payload.email,
          message: payload.message,
          sentAt: new Date()
        });
        this.form.reset();
      },
      error: () => {
        this.submitting = false;
        this.error = true;
      }
    });
  }

  sendAnother(): void {
    this.submitted = false;
  }

  toggleHistory(): void {
    this.showHistory = !this.showHistory;
  }
}
