import std;

void main() {
    int N;
    readf("%d\n", N);

    int lim = N * 2 + 1;
    auto seen = new bool[](lim + 1);
    seen[0] = true;

    int cnt = lim;
    while (cnt > 0) {
        if (cnt % 2 == 1) {
            foreach (i; 1 .. lim + 1) {
                if (seen[i])
                    continue;
                seen[i] = true;
                i.writeln;
                stdout.flush;
                break;
            }
        }
        else {
            int num;
            readf("%d\n", num);
            seen[num] = true;
        }
        --cnt;
    }
}
