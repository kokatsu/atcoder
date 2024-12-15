import std;

void main() {
    int N;
    readf("%d\n", N);

    auto V = readln.chomp.split.to!(int[]);
    auto C = readln.chomp.split.to!(int[]);

    int res;
    foreach (v, c; zip(V, C)) {
        res += max(0, v - c);
    }

    res.writeln;
}
