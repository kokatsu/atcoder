import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);
    --A[];

    int f(int x) {
        int ret = 1, pos = x;
        while (x != A[pos]) {
            ++ret;
            pos = A[pos];
        }
        return ret;
    }

    auto res = new int[](N);
    foreach (i, ref x; res) {
        x = f(i.to!int);
    }

    writefln("%(%s %)", res);
}
