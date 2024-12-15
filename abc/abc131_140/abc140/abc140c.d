import std;

void main() {
    int N;
    readf("%d\n", N);

    auto B = readln.chomp.split.to!(int[]);

    int res = B[N - 2], pre = int.max;
    foreach (b; B) {
        res += min(pre, b);
        pre = b;
    }

    res.writeln;
}
