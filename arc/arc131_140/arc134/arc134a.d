import std;

void main() {
    long N, L, W;
    readf("%d %d %d\n", N, L, W);

    auto a = new long[](N+1);
    a[0..N] = readln.chomp.split.to!(long[]);
    a[N] = L;

    auto res = (a[0] + W - 1) / W;
    res += a.slide(2).map!(x => max(0, (x[1]-x[0]+W-1)/W-1)).sum;

    res.writeln;
}