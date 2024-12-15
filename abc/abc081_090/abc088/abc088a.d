import std;

void main() {
    int N, A;
    readf("%d\n%d\n", N, A);

    string res = (N % 500) <= A ? "Yes" : "No";
    res.writeln;
}
