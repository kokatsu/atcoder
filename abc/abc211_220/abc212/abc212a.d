import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    string res = "Alloy";
    if (A == 0) res = "Silver";
    if (B == 0) res = "Gold";

    res.writeln;
}