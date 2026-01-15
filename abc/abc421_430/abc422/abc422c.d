import std;

void main() {
    int T;
    readfln("%d", T);

    int[] V = new int[](T);
    foreach (ref v; V) {
        int na, nb, nc;
        readfln("%d %d %d", na, nb, nc);

        int minac = min(na, nc);
        int rem = na + nc - 2 * minac;
        if (minac <= nb + rem) {
            v = minac;
            continue;
        }

        int ok, ng = minac;
        while (ng - ok > 1) {
            int mid = (ok + ng) / 2;
            int d = na + nc - 2 * mid;
            if (nb + d >= mid) {
                ok = mid;
            }
            else {
                ng = mid;
            }
        }

        v = ok;
    }

    string res = format("%(%d\n%)", V);
    res.writeln;
}
