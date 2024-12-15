import std;

void main() {
    int a, b;
    readf("%d %d\n", a, b);

    int res = a - 1;
    if (b >= a)
        ++res;

    res.writeln;
}
