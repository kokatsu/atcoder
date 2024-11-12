import std;

void main() {
    int N;
    readf("%d\n", N);

    string res = N % 1111 == 0 ? "SAME" : "DIFFERENT";
    res.writeln;
}