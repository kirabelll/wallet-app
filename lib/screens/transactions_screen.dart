import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade600,
        foregroundColor: Colors.white,
        title: const Text('Transactions'),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildTransactionItem(
            icon: Icons.shopping_bag,
            title: 'Amazon Purchase',
            subtitle: 'Today, 2:30 PM',
            amount: '-\$89.99',
            isDebit: true,
          ),
          _buildTransactionItem(
            icon: Icons.account_balance,
            title: 'Salary Deposit',
            subtitle: 'Yesterday, 9:00 AM',
            amount: '+\$3,200.00',
            isDebit: false,
          ),
          _buildTransactionItem(
            icon: Icons.local_gas_station,
            title: 'Gas Station',
            subtitle: 'Dec 15, 6:45 PM',
            amount: '-\$45.20',
            isDebit: true,
          ),
          _buildTransactionItem(
            icon: Icons.restaurant,
            title: 'Restaurant',
            subtitle: 'Dec 14, 7:30 PM',
            amount: '-\$32.50',
            isDebit: true,
          ),
          _buildTransactionItem(
            icon: Icons.coffee,
            title: 'Coffee Shop',
            subtitle: 'Dec 14, 8:15 AM',
            amount: '-\$5.75',
            isDebit: true,
          ),
          _buildTransactionItem(
            icon: Icons.phone,
            title: 'Phone Bill',
            subtitle: 'Dec 13, 3:00 PM',
            amount: '-\$65.00',
            isDebit: true,
          ),
          _buildTransactionItem(
            icon: Icons.phone,
            title: 'Phone Bill',
            subtitle: 'Dec 13, 3:00 PM',
            amount: '-\$65.00',
            isDebit: true,
          ),
          _buildTransactionItem(
            icon: Icons.phone,
            title: 'Phone Bill',
            subtitle: 'Dec 13, 3:00 PM',
            amount: '-\$65.00',
            isDebit: true,
          ),
          _buildTransactionItem(
            icon: Icons.phone,
            title: 'Phone Bill',
            subtitle: 'Dec 13, 3:00 PM',
            amount: '-\$65.00',
            isDebit: true,
          ),
          _buildTransactionItem(
            icon: Icons.phone,
            title: 'Phone Bill',
            subtitle: 'Dec 13, 3:00 PM',
            amount: '-\$65.00',
            isDebit: true,
          ),
          _buildTransactionItem(
            icon: Icons.phone,
            title: 'Phone Bill',
            subtitle: 'Dec 13, 3:00 PM',
            amount: '+\$65.00',
            isDebit: false,
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required String amount,
    required bool isDebit,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: Colors.grey.shade600,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isDebit ? Colors.red : Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}