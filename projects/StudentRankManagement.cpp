#include <bits/stdc++.h>
using namespace std;

struct Student {
    int id;
    string name;
    int marks;
};

string getGrade(int marks) {
    if (marks >= 90) return "A (Excellent)";
    else if (marks >= 75) return "B (Good)";
    else if (marks >= 50) return "C (Average)";
    else return "D (Poor)";
}


vector<Student> students;


unordered_map<int, int> studentIndexMap;

// TOP-K: Optimized using a Min-Heap of size K
void topK() {
    int k;
    cout << "Enter K: ";
    cin >> k;

    if (students.empty() || k <= 0) return;
    k = min(k, (int)students.size());

    auto comp = [](const Student& a, const Student& b) {
        return a.marks > b.marks;
    };

    priority_queue<Student, vector<Student>, decltype(comp)> minHeap(comp);

    for (const auto& s : students) {
        minHeap.push(s);

        if (minHeap.size() > k) {
            minHeap.pop();
        }
    }

    vector<Student> result;

    while (!minHeap.empty()) {
        result.push_back(minHeap.top());
        minHeap.pop();
    }

    reverse(result.begin(), result.end());

    cout << "\n--- TOP " << k << " STUDENTS ---\n";

    for (int i = 0; i < k; i++) {
        cout << i + 1 << ". "
             << result[i].name
             << " - "
             << result[i].marks << endl;
    }
}


void updateMarks() {
    string choice;

    do {
        int id, marks;

        cout << "\nEnter ID: ";
        cin >> id;

        if (studentIndexMap.find(id) != studentIndexMap.end()) {

            cout << "Enter new marks: ";
            cin >> marks;

            int index = studentIndexMap[id];
            students[index].marks = marks;

            cout << "Updated successfully!\n";

        } else {
            cout << "Student not found!\n";
        }

        while (true) {
            cout << "Update another student? (YES/NO): ";
            cin >> choice;

            for (auto &c : choice)
                c = tolower(c);

            if (choice == "yes" || choice == "no") {
                break;
            } else {
                cout << "Invalid choice! Please enter YES or NO only.\n";
            }
        }

    } while (choice == "yes");
}

// PERFORMANCE ANALYSIS
void analyzePerformance() {
    if (students.empty()) {
        cout << "No data available.\n";
        return;
    }

    int sum = 0, high = INT_MIN, low = INT_MAX;
    int A = 0, B = 0, C = 0, D = 0;

    for (const auto &s : students) {
        sum += s.marks;
        high = max(high, s.marks);
        low = min(low, s.marks);

        if (s.marks >= 90) A++;
        else if (s.marks >= 75) B++;
        else if (s.marks >= 50) C++;
        else D++;
    }

    cout << "\n==============================\n";
    cout << "ACADEMIC PERFORMANCE ANALYSIS\n";
    cout << "==============================\n";

    cout << "Average: " << (double)sum / students.size() << endl;
    cout << "Highest: " << high << endl;
    cout << "Lowest: " << low << endl;

    cout << "\nGrade Distribution:\n";
    cout << "A: " << A << "\nB: " << B
         << "\nC: " << C << "\nD: " << D << endl;

    string view;
    cout << "\nView individual performance? (everyone / individual / none): ";
    cin >> view;

    for (auto &c : view)
        c = tolower(c);

    if (view == "everyone") {

        cout << "\n--- ALL STUDENTS ---\n";

        vector<Student> printList = students;

        sort(printList.begin(), printList.end(),
            [](const Student& a, const Student& b) {
                return a.marks > b.marks;
            });

        for (const auto &s : printList) {
            cout << s.id << " "
                 << s.name << " "
                 << s.marks << " -> "
                 << getGrade(s.marks) << endl;
        }
    }

    else if (view == "individual") {

        int id;
        cout << "Enter Student ID: ";
        cin >> id;

        if (studentIndexMap.find(id) != studentIndexMap.end()) {

            int index = studentIndexMap[id];
            const Student &s = students[index];

            cout << "\n--- STUDENT DETAILS ---\n";
            cout << "ID: " << s.id << endl;
            cout << "Name: " << s.name << endl;
            cout << "Marks: " << s.marks << endl;
            cout << "Grade: " << getGrade(s.marks) << endl;

        } else {
            cout << "Student not found!\n";
        }
    }
}

// MAIN MENU
int main() {
    int n;

    cout << "Enter number of students: ";
    cin >> n;

    for (int i = 0; i < n; i++) {
        Student s;

        cout << "Enter ID Name Marks: ";
        cin >> s.id >> s.name >> s.marks;

        students.push_back(s);
        studentIndexMap[s.id] = i;
    }

    string choice;

    while (true) {
        cout << "\n========== MENU ==========\n";
        cout << "1. Update Marks\n";
        cout << "2. Fetch Top-K\n";
        cout << "3. Analyze Performance\n";
        cout << "Type 'exit' to quit\n";
        cout << "==========================\n";

        cout << "Enter choice: ";
        cin >> choice;

        if (choice == "1")
            updateMarks();
        else if (choice == "2")
            topK();
        else if (choice == "3")
            analyzePerformance();
        else if (choice == "exit") {
            cout << "Exiting...\n";
            break;
        }
        else {
            cout << "Invalid choice!\n";
        }
    }

    return 0;
}