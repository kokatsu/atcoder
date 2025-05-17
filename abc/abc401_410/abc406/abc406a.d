import std;

void main() {
    int A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    string res = (A > C || (A == C && B >= D)) ? "Yes" : "No";
    res.writeln;
}
