import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);

    int L = max(A.maxElement, B.maxElement) + 1;
    auto C = new int[](L);
    foreach (a; A) ++C[a];

    int res;
    foreach (b; B) {
        res += C[b];
        C[b] = 0;
    }

    res.writeln;
}