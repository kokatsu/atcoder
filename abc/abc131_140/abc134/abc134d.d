import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    auto factors = new int[][](N + 1);
    foreach (i; 1 .. N + 1) {
        foreach (j; iota(i, N + 1, i)) {
            factors[j] ~= i;
        }
    }

    int[] b;
    foreach_reverse (i; 0 .. N) {
        if (a[i] == 0)
            continue;

        b ~= i + 1;
        foreach (f; factors[i + 1]) {
            a[f - 1] = (a[f - 1] + 1) % 2;
        }
    }

    b.length.writeln;
    if (b.length > 0)
        writefln("%(%s %)", b);
}
