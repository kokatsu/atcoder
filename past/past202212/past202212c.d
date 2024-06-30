import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    bool[int] list;
    foreach (i; 0 .. N-2) {
        foreach (j; i+1 .. N-1) {
            foreach (k; j+1 .. N) {
                int num = A[i] * A[j] * A[k];
                list[num] = true;
            }
        }
    }

    auto res = list.length;
    res.writeln;
}