import 'package:flutter/material.dart';

class AppointmentForm extends StatelessWidget {
  const AppointmentForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Book an Appointment")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'First Name'),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'Last Name'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Email'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Phone'),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            decoration: const InputDecoration(
                                labelText: 'Select Department'),
                            items: const [
                              DropdownMenuItem(
                                  value: "cardiology",
                                  child: Text("Cardiology")),
                              DropdownMenuItem(
                                  value: "dermatology",
                                  child: Text("Dermatology")),
                              // Add more departments
                            ],
                            onChanged: (value) {},
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            decoration: const InputDecoration(
                                labelText: 'Select Doctor'),
                            items: const [
                              DropdownMenuItem(
                                  value: "dr_john", child: Text("Dr. John")),
                              DropdownMenuItem(
                                  value: "dr_jane", child: Text("Dr. Jane")),
                              // Add more doctors
                            ],
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Your Address'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      maxLines: 4,
                      decoration:
                          const InputDecoration(labelText: 'Your Comments'),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll<Color>(Color(0XFF252B61))),
                      onPressed: () {},
                      child: const Text(
                        'Request Appointment',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
