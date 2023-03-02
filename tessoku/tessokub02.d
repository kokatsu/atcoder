import std;

enum int N = 100;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    bool isOK;
    foreach (i; A .. B+1) {
        isOK |= (N % i == 0);
    }

    writeln(isOK ? "Yes" : "No");
}