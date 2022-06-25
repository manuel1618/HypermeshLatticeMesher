import math
from typing import List


class FEMFileReader:
    """
   
    """

    def __init__(self, path_to_file: str) -> None:
        """
        initialize the reader and take the lines
        Parameters:
        ---------
        path_to_file:str
          This points to the .disp file which is read
        """
        self.lines = []
        with open(path_to_file) as file:
            for line in file.readlines():
                self.lines.append(line)

    def read_nodes(self):
        # # sampleline: "         12-6.49596E-06-2.57354E-05 3.00000E+00-4.00000E+00-5.00000E+00-6.00000E+00"
        # line: str = ""
        # loadstep_name = ""  # not used currently

        # for line in self.lines:
        #     if "DISP:" in line:
        #         loadstep_name = line.split(" ")[-1]  # not used currently
        #     # check if its a displacement string
        #     if line.count("E") == 6:
        #         line = line.strip()
        #         id = int(line[0: -(6*12)])
        #         trans_x = float(line[-(6*12): -(5*12)])
        #         trans_y = float(line[-(5*12): -(4*12)])
        #         trans_z = float(line[-(4*12): -(3*12)])
        #         rot_x = float(line[-(3*12): -(2*12)])
        #         rot_y = float(line[-(2*12): -(1*12)])
        #         rot_z = float(line[-12: len(line)])
        #         total_translation = math.sqrt(
        #             math.pow(trans_x, 2)+math.pow(trans_y, 2)+math.pow(trans_z, 2))
        #         self.nodes2diplacements[id] = total_translation
        pass

    def read_elements(self):
        """
        Scans through the dict and returns the maximum id and displacement value (total)
        """
        pass


if __name__ == "__main__":
    reader = FEMFileReader(
        r"D:\GITHUB\HypermeshLatticeMesher\.git\HypermeshLatticeMesher\HypermeshLatticeMesher\data\femFiles\smallModel.fem")