// Register a user
await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);

// Sign in a user
await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
