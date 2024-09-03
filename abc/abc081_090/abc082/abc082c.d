import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(long[]);

    a.sort;

    long f(long x, uint y) {
        long z = y.to!long;
        if (x <= z) {
            return z - x;
        }
        return z;
    }

    long res = a.group.map!(x => f(x[0], x[1])).sum;
    res.writeln;
}