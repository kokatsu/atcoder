import std;

void main() {
    int N;
    readf("%d\n", N);

    int res;
    foreach (i; 1 .. N + 1) {
        res += (-1) ^^ i * i ^^ 3;
    }

    res.writeln;
}
