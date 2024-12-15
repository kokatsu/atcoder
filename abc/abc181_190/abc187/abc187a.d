import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int f(int x) {
        return x.to!(dchar[])
            .map!(a => a - '0')
            .sum;
    }

    int res = max(f(A), f(B));
    res.writeln;
}
