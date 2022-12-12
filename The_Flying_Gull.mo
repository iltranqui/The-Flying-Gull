within ;
model The_Flying_Gull

  inner Modelica.Mechanics.MultiBody.World world(
    gravityType=Modelica.Mechanics.MultiBody.Types.GravityTypes.UniformGravity,
    g=Modelica.Constants.g_n,
    n={0,-1,0})
    annotation (Placement(transformation(extent={{-160,0},{-140,20}})));

  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(n={0,1,0})
    annotation (Placement(transformation(extent={{-100,2},{-80,22}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r={0.3,
        1.5,-1/3 - 0.04})
    annotation (Placement(transformation(extent={{-92,120},{-50,162}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r={0.3,
        1.5,1/3 + 0.04})
    annotation (Placement(transformation(extent={{-118,-138},{-70,-90}})));
  Modelica.Mechanics.MultiBody.Joints.SphericalSpherical sphericalSpherical(rodLength
      =1.5)  annotation (Placement(transformation(extent={{-22,128},{8,158}})));
  Modelica.Mechanics.MultiBody.Joints.SphericalSpherical sphericalSpherical1(
      rodLength=1.5)
    annotation (Placement(transformation(extent={{-22,-124},{-2,-104}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r={0,0,
        1/3})
    annotation (Placement(transformation(extent={{68,124},{100,156}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox(
    r={0,0,-1},
    width=0.12,
    height=0.005,
    density=1000*(1000e-03/1e6)) annotation (Placement(transformation(
        extent={{-17,-17},{17,17}},
        rotation=180,
        origin={93,33})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox1(
    r={0,0,1},
    width=0.12,
    height=0.005,
    density=1000*(1000e-3/1e6)) annotation (Placement(transformation(
        extent={{-17,-17},{17,17}},
        rotation=180,
        origin={93,-3})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodyCylinder(
    r={0.6,0,0},
    length=1,
    diameter=0.1,
    density=1000*(200e3/1e6))
    annotation (Placement(transformation(extent={{-18,-4},{14,28}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(n={0,1,0})
    annotation (Placement(transformation(extent={{54,80},{74,100}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(n={0,1,0})
    annotation (Placement(transformation(extent={{42,-58},{62,-38}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation5(r={0,0,
        -1/3})
    annotation (Placement(transformation(extent={{50,-138},{94,-94}})));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(r={0.3,0,0.04})
    annotation (Placement(transformation(extent={{-32,-64},{0,-32}})));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation1(r={0.3,0,-0.04})
    annotation (Placement(transformation(extent={{-30,74},{4,108}})));
equation
  connect(world.frame_b, prismatic.frame_a) annotation (Line(
      points={{-140,10},{-114,10},{-114,12},{-100,12}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation.frame_a, prismatic.frame_a) annotation (Line(
      points={{-92,141},{-106,141},{-106,12},{-100,12}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation1.frame_a, prismatic.frame_a) annotation (Line(
      points={{-118,-114},{-124,-114},{-124,12},{-100,12}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation1.frame_b, sphericalSpherical1.frame_a) annotation (
      Line(
      points={{-70,-114},{-22,-114}},
      color={95,95,95},
      thickness=0.5));
  connect(sphericalSpherical1.frame_b, fixedTranslation5.frame_a) annotation (
      Line(
      points={{-2,-114},{46,-114},{46,-116},{50,-116}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation5.frame_b, revolute1.frame_b) annotation (Line(
      points={{94,-116},{104,-116},{104,-48},{62,-48}},
      color={95,95,95},
      thickness=0.5));
  connect(bodyCylinder.frame_a, prismatic.frame_b) annotation (Line(
      points={{-18,12},{-80,12}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedRotation.frame_a, prismatic.frame_b) annotation (Line(
      points={{-32,-48},{-62,-48},{-62,12},{-80,12}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedRotation1.frame_a, prismatic.frame_b) annotation (Line(
      points={{-30,91},{-30,92},{-62,92},{-62,12},{-80,12}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedRotation.frame_b, revolute1.frame_a) annotation (Line(
      points={{-8.88178e-16,-48},{42,-48}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedRotation1.frame_b, revolute.frame_a) annotation (Line(
      points={{4,91},{4,90},{54,90}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation.frame_b, sphericalSpherical.frame_a) annotation (
      Line(
      points={{-50,141},{-38,141},{-38,143},{-22,143}},
      color={95,95,95},
      thickness=0.5));
  connect(sphericalSpherical.frame_b, fixedTranslation2.frame_a) annotation (
      Line(
      points={{8,143},{8,138},{60,138},{60,140},{68,140}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation2.frame_b, revolute.frame_b) annotation (Line(
      points={{100,140},{106,140},{106,90},{74,90}},
      color={95,95,95},
      thickness=0.5));
  connect(bodyBox1.frame_a, revolute1.frame_b) annotation (Line(
      points={{110,-3},{116,-3},{116,-48},{62,-48}},
      color={95,95,95},
      thickness=0.5));
  connect(bodyBox.frame_a, revolute.frame_b) annotation (Line(
      points={{110,33},{110,32},{116,32},{116,90},{74,90}},
      color={95,95,95},
      thickness=0.5));
  annotation (
    uses(Modelica(version="4.0.0")),
    Diagram(coordinateSystem(extent={{-160,-140},{160,160}})),
    Icon(coordinateSystem(extent={{-160,-140},{160,160}})));
end The_Flying_Gull;
