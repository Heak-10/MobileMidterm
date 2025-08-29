import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/Screen/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F9), // Softer light gray

      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: [
          // Profile Picture
          Center(
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Colors.blue.shade100,
              child: const Icon(Icons.person, size: 55, color: Colors.blueGrey),
            ),
          ),
          const SizedBox(height: 16),

          // User Name
          Center(
            child: Text(
              "NayHeak", // Updated Name
              style: GoogleFonts.poppins(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Colors.blueGrey.shade900,
              ),
            ),
          ),

          // User Email
          Center(
            child: Text(
              "nayheak@email.com",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.blueGrey.shade600,
              ),
            ),
          ),
          const SizedBox(height: 30),

          // Edit Profile Button
          ElevatedButton.icon(
            onPressed: () {
              // TODO: Navigate to edit profile screen
            },
            icon: const Icon(Icons.edit, color: Colors.white),
            label: Text(
              "Edit Profile",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 3,
            ),
          ),
          const SizedBox(height: 25),

          // Options
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.security, color: Colors.indigo),
                  title: Text(
                    "Update Password",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // TODO: Navigate to update password
                  },
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.exit_to_app, color: Colors.red),
                  title: Text(
                    "Sign Out",
                    style: GoogleFonts.poppins(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
