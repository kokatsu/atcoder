import std;

void main() {
    string S = readln.chomp;

    uint K;
    readf("%d\n", K);

    uint C = S.count('.').to!uint;
    if (C <= K) {
        S.length.writeln;
        return;
    }

    auto T = S.group.array;

    uint res, chg, len;
    uint[] num, cnt;
    foreach (t; T) {
        if (t[0] == 'X') {
            len += t[1];
            num ~= t[1];
            cnt ~= 0;
        }
        else {
            if (K - chg >= t[1]) {
                chg += t[1];
                len += t[1];
                num ~= t[1];
                cnt ~= t[1];
            }
            else {
                res = max(res, len + K - chg);

                while (!cnt.empty && K - chg < t[1]) {
                    chg -= cnt.front;
                    cnt.popFront;

                    len -= num.front;
                    num.popFront;
                }

                uint tmp = min(K, t[1]);

                chg += tmp;
                len += tmp;
                num ~= tmp;
                cnt ~= tmp;
            }
        }
    }
    res = max(res, len);

    res.writeln;
}
