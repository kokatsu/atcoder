import std;

void main() {
    long N, L;
    readf("%d %d\n", N, L);

    auto X = new long[](N+1), A = new long[](N+1);
    foreach (i; 1 .. N+1) readf("%d %d\n", X[i], A[i]);

    long ok = long.max / 2, ng = -1;
    while (ok - ng > 1) {
        long mid = (ok + ng) / 2;

        long P = mid;
        bool canArrive = true;
        foreach (i; 1 .. N+1) {
            P = min(mid, P+X[i]-X[i-1]);
            P -= A[i];

            if (P < 0) {
                canArrive = false;
                break;
            }
        }

        (canArrive ? ok : ng) = mid;
    }

    ok.writeln;
}