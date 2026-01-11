import std;

void main() {
    int N, Q;
    readfln("%d %d", N, Q);

    long[] A = readln.chomp.split.to!(long[]);

    auto S = A.sort;

    long[] V = new long[](Q);

    foreach (ref v; V) {
        long X, Y;
        readfln("%d %d", X, Y);

        long L = S.lowerBound(X).length;

        long ng = X - 1, ok = long.max / 4;
        while (ok - ng > 1) {
            long mid = (ok + ng) / 2;
            long len = S.lowerBound(mid + 1).length;
            if (mid - X + 1 - len + L >= Y) {
                ok = mid;
            }
            else {
                ng = mid;
            }
        }

        v = ok;
    }

    string res = format("%(%d\n%)", V);
    res.writeln;
}
