import std;

void main() {
    int n;
    readf("%d\n", n);

    int res = n + (n % 2 == 1 ? 1 : -1);
    res.writeln;
}
