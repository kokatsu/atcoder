import std;

void main() {
    int N, T;
    readf("%d %d\n", N, T);

    auto t = readln.chomp.split.to!(int[]);

    int res = T, pos;
    foreach (x; t) {
        res += min(T, x - pos);
        pos = x;
    }

    res.writeln;
}
