import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final auth = FirebaseAuth.instance;


class FirestoreService {
  final CollectionReference transactions =
      FirebaseFirestore.instance.collection('transactions');

  Future<void> addTransaction(String title, double amount) {
    return transactions.add({
      'title': title,
      'amount': amount,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Stream<QuerySnapshot> getTransactions() {
    return transactions.orderBy('timestamp', descending: true).snapshots();
  }
}
