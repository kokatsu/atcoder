import std;

void main() {
    int N, T, A;
    readf("%d %d %d\n", N, T, A);

    string res = max(T, A) * 2 > N ? "Yes" : "No";
    res.writeln;
}
