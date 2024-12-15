import std;

void main() {
    long N;
    readf("%d\n", N);

    auto S = readln.chomp;

    long res, r, cnto, cntx;
    foreach (l; 0 .. N) {
        while (r < N && cnto * cntx == 0) {
            (S[r++] == 'o' ? cnto : cntx) += 1;
        }

        if (cnto * cntx > 0)
            res += N - r + 1;

        (S[l] == 'o' ? cnto : cntx) -= 1;
    }

    res.writeln;
}
