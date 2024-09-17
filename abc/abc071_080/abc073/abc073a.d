import std;

void main() {
    int N;
    readf("%d\n", N);

    string res = (N / 10 == 9 || N % 10 == 9) ? "Yes" : "No";
    res.writeln;
}