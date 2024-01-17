import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int mn = A.minElement, mx = A.maxElement;

    auto res = new int[](N);
    foreach (i, a; A) {
        res[i] = max(a-mn, mx-a);
    }

    writefln("%(%s\n%)", res);
}