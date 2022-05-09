import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);
    auto b = readln.chomp.split.to!(int[]);

    auto L = new int[](N), R = new int[](N);
    L[] = N, R[] = -1;

    bool[int] alist, blist;
    int acnt, bcnt, r;
    foreach (l; 0 .. N) {
        if (a[l] in alist) {
            L[l] = L[l-1], R[l] = R[l-1];
        }
        else {
            alist[a[l]] = true;
            ++acnt;

            int mn = N, mx = -1;
            while (r < N && b[r] in alist) {
                if (!(b[r] in blist)) {
                    blist[b[r]] = true;
                    ++bcnt;
                }

                if (acnt == bcnt) {
                    mn = min(mn, r), mx = max(mx, r);
                }

                ++r;
            }

            L[l] = mn, R[l] = mx;
        }
    }

    int Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        int x, y;
        readf("%d %d\n", x, y);

        --x, --y;

        bool isOK = (L[x] <= y && y <= R[x]);
        writeln(isOK ? "Yes" : "No");
    }
}