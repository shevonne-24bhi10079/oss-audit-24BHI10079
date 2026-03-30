#!/bin/bash
echo "--- OSS USER FEEDBACK LOG ---"
read -p "1. Why did you choose VLC for this audit? " REASON
read -p "2. Which VLC feature is most important to you? " FEATURE
read -p "3. Do you prefer OSS over Proprietary software? (Yes/No) " PREF

echo "Saving your audit reflections to manifesto.txt..."

{
  echo "Audit Date: $(date)"
  echo "Student: Shevonne Maria Jose (24BHI10079)"
  echo "Reason: $REASON"
  echo "Top Feature: $FEATURE"
  echo "Preference: $PREF"
  echo "--------------------------------------"
} >> manifesto.txt

echo "Done. You can now view 'manifesto.txt'."
