import std;

enum int M = 111;

void main() {
    int N;
    readf("%d\n", N);

    bool isOk = ((N % 1000) % M == 0) || ((N / 10) % M == 0);

    string res = isOk ? "Yes" : "No";
    res.writeln;
}
