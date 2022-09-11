import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto H = readln.chomp.split.to!(int[]);

    auto roads = new int[][](N);
    foreach (_; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        --A, --B;
        roads[A] ~= B, roads[B] ~= A;
    }

    int res;
    foreach (i; 0 .. N) {
        bool isOK = true;
        foreach (r; roads[i]) isOK &= (H[i] > H[r]);

        if (isOK) ++res;
    }

    res.writeln;
}