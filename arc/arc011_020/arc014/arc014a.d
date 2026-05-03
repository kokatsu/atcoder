import std;

void main() {
    int N;
    readfln("%d", N);

    string res = N % 2 == 1 ? "Red" : "Blue";
    res.writeln;
}
