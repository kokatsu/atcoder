import std;

void main() {
    auto S = readln.chomp;
    auto T = readln.chomp;

    auto sg = S.group.array;
    auto tg = T.group.array;

    auto sglen = sg.length, tglen = tg.length;
    bool isOK = (sglen == tglen);
    if (isOK) {
        foreach (i; 0 .. sglen) {
            if (sg[i][0] != tg[i][0]) {
                isOK = false;
                break;
            }

            if (sg[i][1] > tg[i][1]) {
                isOK = false;
                break;
            }

            if (sg[i][1] < tg[i][1] && sg[i][1] == 1) {
                isOK = false;
                break;
            }
        }
    }

    writeln(isOK ? "Yes" : "No");
}
