import std;

void main() {
    int A, D;
    readf("%d %d\n", A, D);

    int res = max((A+1)*D, A*(D+1));
    res.writeln;
}