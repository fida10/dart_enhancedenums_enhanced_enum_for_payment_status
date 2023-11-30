/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/enhancedenums_enhanced_enum_for_payment_status_base.dart';

/*
Practice Question 2: Enhanced Enum for Payment Status

Question:

Create an enhanced enum PaymentStatus with values Pending, Completed, Failed, Refunded.

Implement a description property that returns a user-friendly string description for each status 
(e.g., Pending returns "Awaiting payment").

Add a method isFinal that returns true if the status is either Completed or Refunded.
 */

enum PaymentStatus {
  Pending,
  Completed,
  Failed,
  Refunded;

  String get description => (this == Pending)
      ? "Awaiting payment"
      : (this == Completed)
          ? "Payment completed"
          : (this == Failed)
              ? "Payment failed"
              : "Payment refunded";

  bool isFinal() => (this == Refunded || this == Completed);
}
