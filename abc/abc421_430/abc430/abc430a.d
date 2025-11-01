import std;

void main() {
    int A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    string res = C >= A && D < B ? "Yes" : "No";
    res.writeln;
}
