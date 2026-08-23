import std;

void main() {
    int N, L, W;
    readfln("%d %d %d", N, L, W);

    int[] D = readln.chomp.split.to!(int[]);

    size_t res = D.count!(d => L - W <= d && d <= L + W);
    res.writeln;
}
