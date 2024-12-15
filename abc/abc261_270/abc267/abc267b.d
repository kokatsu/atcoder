import std;

void main() {
    string S;
    readf("%s\n", S);

    if (S[0] == '0') {
        auto rems = [1, 1, 2, 1, 2, 1, 1];

        if (S[1] == '0')
            --rems[2];
        if (S[2] == '0')
            --rems[4];
        if (S[3] == '0')
            --rems[1];
        if (S[4] == '0')
            --rems[3];
        if (S[5] == '0')
            --rems[5];
        if (S[6] == '0')
            --rems[0];
        if (S[7] == '0')
            --rems[2];
        if (S[8] == '0')
            --rems[4];
        if (S[9] == '0')
            --rems[6];

        bool isExist, noExist, isOK;
        foreach (r; rems) {
            if (r > 0) {
                if (noExist)
                    isOK = true;
                else
                    isExist = true;
            }
            else {
                if (isExist)
                    noExist = true;
            }
        }

        if (isOK) {
            writeln("Yes");
            return;
        }
    }

    writeln("No");
}
