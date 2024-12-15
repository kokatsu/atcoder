import std;

void main() {
    int N;
    readf("%d\n", N);

    if (N >= 42) {
        ++N;
    }

    writeln("AGC", padLeft(N.to!string, '0', 3));
}
