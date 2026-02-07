import std;

void main() {
    int N;
    readfln("%d", N);

    string res = N % 111 == 0 ? "Yes" : "No";
    res.writeln;
}
