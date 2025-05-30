import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto A = readln.chomp.split.to!(int[]);

    int S = A.sum;
    int MN = A.minElement;
    int MX = A.maxElement;

    int res = -1, rem = X - S + MN + MX;
    if (rem <= MN) {
        res = 0;
    }
    else if (rem <= MX) {
        res = max(0, rem);
    }

    res.writeln;
}
