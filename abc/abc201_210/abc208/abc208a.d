import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int mn = A, mx = A * 6;

    bool isOK = (mn <= B && B <= mx);
    writeln(isOK ? "Yes" : "No");
}
