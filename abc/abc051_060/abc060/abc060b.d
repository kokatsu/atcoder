import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    string res = C % gcd(A, B) == 0 ? "YES" : "NO";
    res.writeln;
}